package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.ProductImage;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.id.ProductImageID;
@Repository
public interface ProductImageRepository extends JpaRepository<ProductImage, ProductImageID> {
}