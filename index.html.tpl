<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <title>Portfolio of Shimon Nagar</title>
  <style>
    /* Your CSS styles can go here */
    body {
      font-family: 'Roboto', sans-serif;
      line-height: 1.6;
      margin: 0;
      padding: 0;
      background-color: #f2f2f2;
    }

    header {
      background-color: #007bff;
      position: relative;
      color: #fff;
      text-align: center;
      padding: 2rem 1rem;
    }

    header:before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-image: url('https://media.istockphoto.com/id/1345778718/photo/cloud-computing-the-data-transfer-and-storage-concept-consists-of-a-white-polygonal.webp?b=1&s=170667a&w=0&k=20&c=GnhRL-ni1TLWITFWdYUAygacWEiSOK8nS_uo8pKw9rY='); /* Replace with your cloud symbol image URL */
      background-size: cover;
      opacity: 0.1;
    }

    header h1 {
      margin: 0;
      font-size: 3rem;
    }

    header p {
      margin: 0;
      font-size: 1.5rem;
    }

    main {
      padding: 2rem;
      max-width: 800px;
      margin: 0 auto;
      background-color: #f9f9f9;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    footer {
      background-color: #007bff;
      color: #fff;
      text-align: center;
      padding: 1rem;
    }
    footer a {
      color: #fff;
      text-decoration: none;
      transition: color 0.2s ease;
    }

    /* Style the image */
    .cloud-image {
      width: 200px;
      height: auto;
      display: block;
      margin: 0 auto;
      background-color: #6dd5ed;
      border-radius: 50%;
      padding: 10px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    /* Add some animations */
    header h1 {
      animation: fadeInDown 1s;
    }

    main {
      animation: fadeInUp 1s;
    }

    @keyframes fadeInDown {
      from {
        opacity: 0;
        transform: translateY(-20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    /* Review Section */
    .reviews {
      margin-top: 2rem;
      background-color: #f9f9f9;
      padding: 2rem;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      overflow-y: scroll;
      max-height: 400px;
    }

    .review-card {
      padding: 1rem;
      border: 1px solid #ccc;
      border-radius: 10px;
      margin-bottom: 1rem;
      background-color: #fff;
    }

    .review-card .rating {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .rating span {
      color: #ffd700; /* Gold color for stars */
      font-size: 1.2rem;
      margin-right: 3px;
    }

    /* Cloud Native Projects Section */
    .cloud-native-projects {
      margin-top: 2rem;
      background-color: #f9f9f9;
      padding: 2rem;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .project-card {
      padding: 1rem;
      border: 1px solid #ccc;
      border-radius: 10px;
      margin-bottom: 1rem;
      background-color: #fff;
    }

    /* Center the image */
    .center-image {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 200px;
      background-image: linear-gradient(to right, #ff4b5c, #ffc107);
      border-radius: 50%;
    }

    /* Texture for Reviews and Cloud Native Projects */
    .reviews {
      background-image: linear-gradient(to right, #6dd5ed, #2196f3);
    }

    .cloud-native-projects {
      background-image: linear-gradient(to right, #fdc830, #f37335);
    }

    /* Styling for headings and links */
    h1, h2, h3 {
      font-family: 'Lobster', cursive;
      color: #007bff;
    }

    a {
      color: #007bff;
      text-decoration: none;
      transition: color 0.2s ease;
    }

    a:hover {
      color: #ff4b5c;
    }

    /* Vibrant box animations */
    .vibrant-box {
      background-color: #007bff;
      color: #fff;
      padding: 2rem;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      animation: fadeInUp 1s;
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    /* Testimonials animation */
    .testimonials {
      animation: fadeInLeft 1s;
    }

    .testimonial-card {
      animation: fadeInUp 1s;
      transition: transform 0.2s ease;
    }

    .testimonial-card:hover {
      transform: scale(1.05);
    }

    @keyframes fadeInLeft {
      from {
        opacity: 0;
        transform: translateX(-20px);
      }
      to {
        opacity: 1;
        transform: translateX(0);
      }
    }
  </style>
</head>

<body>
  <header>
    <h1>Shimon Nagar Resume</h1>
    <p>Portfolio of Shimon Nagar</p>
    <div class="social-links">
      <!-- <a href="https://twitter.com/yourusername" target="_blank"><i class="fab fa-twitter"></i></a> -->
      <a href="https://www.linkedin.com/in/shimon-nagar-9b0b90329/" target="_blank"><i class="fab fa-linkedin"></i></a>
      <a href="https://github.com/shimon066536" target="_blank"><i class="fab fa-github"></i></a>
    </div>
  </header>

  <main>
    <div class="center-image">
      <img class="cloud-image" src="${profile_picture_url}" alt="Shimon's Profile Picture">
    </div>

    <h2>About Me</h2>
    <p>Hi, I'm Shimon, a DevOps engineer with hands-on experience in cloud technologies and infrastructure automation. I previously worked at Surecomp, where I gained practical knowledge in CI/CD pipelines, container orchestration with Kubernetes, and cloud environments like AWS.</p>
    <p>Currently, I'm focused on expanding my DevOps skills by building real-world projects — from deploying static websites using Terraform on AWS to configuring monitoring solutions with Prometheus and Grafana.</p>
    <p>I'm passionate about automation, cloud computing, and continuous learning. As I grow my portfolio, I'm also exploring opportunities to offer freelance DevOps services, helping businesses optimize their cloud infrastructure.</p>
    <p>Feel free to check out my projects and connect with me — let's build something great together!</p>

    <h2 class="testimonials">Reviews</h2>
    <div class="reviews">
      <div class="testimonial-card">
        <div class="rating">
          <span>⭐⭐⭐⭐⭐</span>
        </div>
        <p>"Shimon's expertise in cloud computing and DevOps is unparalleled. He provided valuable insights and solutions for our project, and we couldn't be happier with the results."</p>
        <p>- John Doe, CEO at Example Corp</p>
      </div>
      <div class="testimonial-card">
        <div class="rating">
          <span>⭐⭐⭐⭐⭐</span>
        </div>
        <p>"Working with Shimon was a great experience. His dedication and problem-solving skills made our cloud migration project a success."</p>
        <p>- Jane Smith, CTO at ABC Solutions</p>
      </div>
      <div class="testimonial-card">
        <div class="rating">
          <span>⭐⭐⭐⭐⭐</span>
        </div>
        <p>"Shimon's knowledge of AWS and cloud infrastructure is impressive. He helped us optimize costs and improve our system's performance."</p>
        <p>- Mark Johnson, CIO at XYZ Tech</p>
      </div>
      <div class="testimonial-card">
        <div class="rating">
          <span>⭐⭐⭐⭐⭐</span>
        </div>
        <p>"I am extremely satisfied with Shimon's work. He is a true professional with deep knowledge of cloud technologies."</p>
        <p>- Sarah Brown, Director of Engineering</p>
      </div>
      <div class="testimonial-card">
        <div class="rating">
          <span>⭐⭐⭐⭐⭐</span>
        </div>
        <p>"Shimon's guidance on our cloud security strategy was invaluable. His attention to detail and clear communication are commendable."</p>
        <p>- Michael Williams, Security Officer at Company Z</p>
      </div>
      <!-- Add more reviews as needed -->
    </div>

    <h2 class="cloud-native-projects">Cloud Native Projects</h2>
    <div class="cloud-native-projects">
      <div class="project-card">
        <h3>Project: Kubernetes in the Cloud</h3>
        <p>A scalable and robust Kubernetes setup in the cloud, leveraging the power of microservices architecture and Helm for deployment.</p>
      </div>
      <div class="project-card">
        <h3>Project: CI/CD with Jenkins and GitLab</h3>
        <p>Building a robust continuous integration and continuous deployment pipeline using Jenkins and GitLab for version control.</p>
      </div>
      <div class="project-card">
        <h3>Project: Cloud Monitoring with Prometheus and Grafana</h3>
        <p>Implementing a comprehensive cloud monitoring solution using Prometheus and Grafana to ensure system reliability.</p>
      </div>
      <div class="project-card">
        <h3>Project: Serverless Architecture with AWS Lambda</h3>
        <p>Designing and deploying serverless applications using AWS Lambda for cost efficiency and automatic scaling.</p>
      </div>
      <div class="project-card">
        <h3>Project: DevOps Automation with Ansible</h3>
        <p>Creating a fully automated DevOps environment using Ansible for configuration management and orchestration.</p>
      </div>
      <div class="project-card">
        <h3>Project: Microservices with Spring Boot</h3>
        <p>Building a microservices-based application using Spring Boot, Docker, and Kubernetes for high availability.</p>
      </div>
      <div class="project-card">
        <h3>Project: AWS Serverless Data Pipeline</h3>
        <p>Developing a serverless data pipeline using AWS services such as S3, Lambda, and DynamoDB for data processing.</p>
      </div>
      <div class="project-card">
        <h3>Project: GCP Cloud Functions and Firestore</h3>
        <p>Creating and deploying Google Cloud Functions with Firestore as a NoSQL database for scalable applications.</p>
      </div>
      <div class="project-card">
        <h3>Project: Azure DevOps Pipeline</h3>
        <p>Setting up a continuous integration and continuous deployment pipeline with Azure DevOps for Azure-based applications.</p>
      </div>
      <div class="project-card">
        <h3>Project: Terraform for Multi-Cloud Provisioning</h3>
        <p>Using Terraform to provision and manage resources across multiple cloud providers for hybrid cloud setups.</p>
      </div>
      <!-- Add more cloud native projects as needed -->
    </div>

    <div class="vibrant-box">
      <h2>Contact Me</h2>
      <p>If you have any questions, collaboration opportunities, or just want to say hello, feel free to reach out to me:</p>
      <ul>
        <li>Email: shimon066536@gmail.com</li>
        <!-- For future use -->
        <!-- <li>YouTube: <a href="https://www.youtube.com/shimon-nagar" target="_blank">YouTube Channel</a></li> -->
        <li>LinkedIn: <a href="https://www.linkedin.com/in/shimon-nagar-9b0b90329/" target="_blank">Shimon Nagar's LinkedIn Profile</a></li>
        <li>GitHub: <a href="https://github.com/shimon066536" target="_blank">Your GitHub Profile</a></li>
      </ul>
    </div>
  </main>

  <footer>
    <p>&copy; Shimon Nagar | All rights reserved.</p>
  </footer>
</body>

</html>