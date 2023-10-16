package ngothanhcong.movie.services;

import java.io.File;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;

import ngothanhcong.movie.entity.ServiceModel;
import ngothanhcong.movie.repository.InforMovieRepository;

@Service
public class MovieServiceImpl implements MovieService {
	@Autowired
	private InforMovieRepository inforMovieRepository;
	
	public List<ServiceModel> findByAllMovie(){
		return (List<ServiceModel>) inforMovieRepository.findAll();
	}
	
//	public List<ServiceModel[]> findAll(){
//		ObjectMapper objectMapper = new ObjectMapper();
//////	File serviceModel  = new  File(".\\Json\\Movie.json");
//	File serviceModel  = new  File(".\\src\\main\\webapp\\resources\\json\\movie.json");
//	ServiceModel[] serviceModels =  objectMapper.readValue(serviceModel,ServiceModel[].class);
//		return (List<ServiceModel[]>) inforMovieRepository.findAll();
//	}
	
	public void DeleteById(String name) {
		inforMovieRepository.deleteById(name);
	}
	
	
	
	

	@Override
	public boolean addMovie(ServiceModel serviceModel) {
		
		return inforMovieRepository.save(serviceModel)!=null;
	}

	@Override
	public ServiceModel findById(String name) {
		Optional<ServiceModel> eMovie = inforMovieRepository.findById(name);
		if(eMovie!=null) {
			return eMovie.get(); 
		}
		
		return null;
	}
	
	
	
	
	
	
}
