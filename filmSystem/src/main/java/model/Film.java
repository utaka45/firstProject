package model;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Film {
	private Integer filmId;
	@NotEmpty(message="개봉일을 입력하세요.")
	private String releaseDate;
	@NotEmpty(message="영화제목을 입력하세요.")
	private String filmTitle;
	@NotNull(message="가격을 입력해주세요.")
	@Min(0)
	private Integer filmPrice;
	@NotEmpty(message="등급을 입력하세요.")
	private String filmRating;
	@NotEmpty(message="감독을 입력하세요.")
	private String director;
	@NotEmpty(message="내용을 입력하세요.")
	private String filmDescription;
	private String filmPoster;
	private MultipartFile picture;
	private String genre;
	
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public Integer getFilmId() {
		return filmId;
	}
	public void setFilmId(Integer filmId) {
		this.filmId = filmId;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getFilmTitle() {
		return filmTitle;
	}
	public void setFilmTitle(String filmTitle) {
		this.filmTitle = filmTitle;
	}
	public Integer getFilmPrice() {
		return filmPrice;
	}
	public void setFilmPrice(Integer filmPrice) {
		this.filmPrice = filmPrice;
	}
	public String getFilmRating() {
		return filmRating;
	}
	public void setFilmRating(String filmRating) {
		this.filmRating = filmRating;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getFilmDescription() {
		return filmDescription;
	}
	public void setFilmDescription(String filmDescription) {
		this.filmDescription = filmDescription;
	}
	public String getFilmPoster() {
		return filmPoster;
	}
	public void setFilmPoster(String filmPoster) {
		this.filmPoster = filmPoster;
	}
	public MultipartFile getPicture() {
		return picture;
	}
	public void setPicture(MultipartFile picture) {
		this.picture = picture;
	}
	
}
