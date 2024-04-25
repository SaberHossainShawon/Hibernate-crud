package ExamPractise;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        try {
            Configuration config = new Configuration();
//            config.setProperty("hibernate.connection.driver_class", "com.mysql.cj.jdbc.Driver");
            config.configure();
            sessionFactory = config.buildSessionFactory();
        } catch (HibernateException ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}
