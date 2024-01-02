package persistence;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import logica.Oradores;
import persistence.exceptions.NonexistentEntityException;

/**
 *
 * @author gabyg
 */
public class OradoresJpaController implements Serializable {

    public OradoresJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public OradoresJpaController() {
        emf = Persistence.createEntityManagerFactory("javawebPU");
    }


    public void create(Oradores oradores) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(oradores);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Oradores oradores) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            oradores = em.merge(oradores);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = oradores.getId();
                if (findOradores(id) == null) {
                    throw new NonexistentEntityException("The oradores with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Oradores oradores;
            try {
                oradores = em.getReference(Oradores.class, id);
                oradores.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The oradores with id " + id + " no longer exists.", enfe);
            }
            em.remove(oradores);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Oradores> findOradoresEntities() {
        return findOradoresEntities(true, -1, -1);
    }

    public List<Oradores> findOradoresEntities(int maxResults, int firstResult) {
        return findOradoresEntities(false, maxResults, firstResult);
    }

    private List<Oradores> findOradoresEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Oradores.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Oradores findOradores(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Oradores.class, id);
        } finally {
            em.close();
        }
    }

    public int getOradoresCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Oradores> rt = cq.from(Oradores.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
