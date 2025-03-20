#!/bin/bash

IP=$1
PORT=$2

if [ -z "$IP" ] || [ -z "$PORT" ]; then
  echo "Usage: ./latency_test.sh <IP_ADDRESS> <PORT>"
  exit 1
fi

BASE_URL="http://${IP}:${PORT}/infer"

query_number=1

# --- Simple Short Sentences ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Hello."}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Good day."}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "How are you"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Thank you"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Yes please"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "No thanks"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Lets go"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "See you soon"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Have a nice day"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Okay sounds good"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))

# --- Slightly Longer Sentences Positive Sentiment ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The movie was absolutely fantastic and I enjoyed every minute"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I am very happy with the service provided it exceeded my expectations"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The food was delicious and the staff were incredibly friendly and helpful"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "This product is amazing I would highly recommend it to everyone"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Everything was perfect from start to finish a truly wonderful experience"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I am extremely satisfied with my purchase and would buy it again"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The quality is excellent and the price is very reasonable great value"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I had a fantastic time and will definitely be returning in the future"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The atmosphere was lovely and the overall experience was top notch"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I could not be happier with the outcome truly exceptional work"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))

# --- Slightly Longer Sentences Negative Sentiment ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The movie was terrible and I regretted wasting my time watching it"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I am very disappointed with the service it was far below my expectations"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The food was awful and the staff were rude and unhelpful a terrible experience"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "This product is a complete waste of money do not buy it extremely poor quality"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Everything was a disaster from beginning to end a truly awful and frustrating experience"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I am extremely dissatisfied and will never purchase anything from this company again"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The quality is terrible and the price is outrageous absolutely no value for money"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I had a terrible time and would strongly advise everyone to avoid this place in the future"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The atmosphere was unpleasant and the whole experience was incredibly disappointing"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I could not be more unhappy with the result completely unacceptable and unprofessional work"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))

# --- More Complex Sentences Mixed Sentiment  Questions ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "While the plot was confusing the acting was superb but the ending made little sense What did you think"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Although it started promisingly the second half of the book really let me down which is a shame"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Despite some initial flaws the product ultimately delivered on its promises surprisingly"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Even though it rained all day we still managed to have a good time can you believe it"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Considering the price the quality is acceptable but is it really worth the money in the long run"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "While I appreciate the effort the final result is simply not up to par unfortunately"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Although I had high hopes the experience was ultimately underwhelming and forgettable sadly"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Despite the positive reviews I found it to be quite mediocre and not particularly memorable to be honest"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Even with the discounts I am not sure if it is a good deal what do you think about the value proposition"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "While some aspects were well done the overall impression was rather disappointing wouldnt you agree"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))

# --- Technical Cloud Computing Related Sentences ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Container orchestration in Docker Swarm is essential for scalability"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Latency and throughput are key metrics for LLM inference performance"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Network topology significantly impacts distributed systems"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Bash scripts can be used for IT automation"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Distributed topology involves remote sites"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Mesh networks in Docker Swarm may have performance penalties"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Large language model prompts can be complex"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Poor Swarm performance can lead to lag"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "LLMs explore latency throughput and cost"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "New bash scripts can be generated by LLMs"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))

# ---  Paragraph Length Texts  Varying Sentiment ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The advancements in large language models have been truly remarkable in recent years Their ability to understand and generate human like text is transforming various industries and applications From natural language processing to content creation the potential is vast"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Despite the excitement there are also valid concerns regarding the ethical implications of increasingly powerful LLMs Issues such as bias in training data the potential for misuse and the societal impact of automation need careful consideration and responsible development practices"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The performance of distributed systems is heavily influenced by network topology Choosing the right network structure is crucial for ensuring scalability reliability and efficient communication between components especially in demanding applications like distributed LLM inference"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "While Docker Swarm offers built in mesh networking for service discovery it is important to be aware of potential performance overhead associated with mesh topologies in certain scenarios Careful monitoring and performance testing are recommended to optimize Swarm deployments"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Timothee Lacroix CTO of Mistral discussed exploring the latency throughput and cost space for LLM inference highlighting the importance of optimizing these factors for practical LLM deployments Understanding these trade offs is crucial for real world applications"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The newly created Docker Swarm cluster exhibited surprisingly poor performance with significant lag observed when interacting with the cluster management interface particularly through Portainer indicating potential architectural bottlenecks"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Bash one liners and even more complex scripts can be effectively leveraged for various IT automation tasks and advanced large language models can even assist in generating these scripts for system reliability engineering and other domains"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "In a distributed topology a common architecture involves deploying application components across multiple geographically dispersed remote sites enhancing resilience and proximity to end users"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Generating custom bash scripts using sophisticated 70B parameter LLMs integrated directly into the shell environment represents a cutting edge approach to automating and streamlining system administration and development workflows"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Understanding the intricate interplay between latency throughput and cost is paramount when deploying large language models for inference in production environments demanding careful optimization and resource management"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))

# --- Repeated Sentences with slight variations focus on consistency ---
for i in {1..10}; do curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Testing latency for repeated query"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1)); done
for i in {1..10}; do curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Another latency measurement for consistency check"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1)); done
for i in {1..10}; do curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Measuring latency under slightly different input"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1)); done
for i in {1..10}; do curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Latency test with input variation number ${i}"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1)); done
for i in {1..10}; do curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Run ${i} of latency measurement series"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1)); done


# --- Very Long Sentence Paragraph to Test Length Impact ---
LONG_TEXT=$(cat <<EOF
This is a very long sentence designed to test the latency impact of input text length on the LLM inference service We are exploring how the length of the input affects the processing time and overall performance This paragraph is intentionally extended to simulate scenarios where the model needs to handle more substantial amounts of textual data for sentiment analysis We will analyze the latency measurements for these long inputs in comparison to shorter sentences to determine if there is a significant correlation between input length and inference time  Understanding this relationship is crucial for optimizing the service and predicting performance under varying workloads
EOF
)
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d "{\"text\": \"${LONG_TEXT}\"}" ${BASE_URL} -o /dev/null; query_number=$((query_number+1))


# --- Queries with movie review style sentences ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "This movie felt like the inside of my head"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Bad cheesy acting dumb ending"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Plot is interesting but its not even worth a watch"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "It was so terribly made"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Nothing is explained"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The whole journey is pointless"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Never seen anyone miss the point so bad"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "It was almost admirable how bad they missed it"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "A movie that has terrible reviews but you enjoy anyway"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "What popular film do you think is a complete waste of time"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "A movie so terrible you would never waste your time again"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "What movie do you think is horrible and overrated"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "When I love a movie so much and see negative reviews"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I stop liking it"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Start to feel as if its mediocre"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "How do I stop this"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "What puts you in a terrible mood"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Its something as non essential"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Actually a horrible explanation"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Felt like the inside of my head"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "World of non stop news most of it bad"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "How is a person like me"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Trouble understanding everything"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Bad acting"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Dumb ending"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Terribly made"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Not even worth a watch"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Nothing explained"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Pointless journey"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Missed the point so bad"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Almost admirable how bad"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Terrible reviews but you enjoy anyway"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))

# --- More varied review phrases ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I absolutely promise not to waste your time"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Piece them together with commentary"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Make my full reviews here on Medium"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Before they go anywhere else"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Enjoyed every minute"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Exceeded my expectations"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Incredibly friendly and helpful staff"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Highly recommend it to everyone"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Truly wonderful experience"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Extremely satisfied with my purchase"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Great value for money"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Definitely be returning"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Top notch overall experience"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Truly exceptional work"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))

# --- Negative review snippets ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Regretted wasting my time watching it"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Far below my expectations"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Awful food rude staff"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Terrible experience all around"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Complete waste of money"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Do not buy it"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Extremely poor quality"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Disaster from beginning to end"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Awful and frustrating"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Extremely dissatisfied"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Never purchase again"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Terrible quality outrageous price"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "No value for money"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Strongly advise everyone to avoid"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Unpleasant atmosphere"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Incredibly disappointing experience"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Completely unacceptable work"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Unprofessional result"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))

# --- More descriptive longer reviews ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "While the visuals were stunning the story just didnt grab me at all"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I wanted to love this film but it ended up being quite a letdown in the end"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Despite the hype I found it to be rather mediocre and forgettable to be honest"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The plot was all over the place and the characters felt very underdeveloped"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I went in with high expectations but left feeling utterly disappointed and bored"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Honestly I struggled to stay awake through most of it it was that dull"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The acting was wooden and the dialogue was incredibly cliched and predictable"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I wouldnt recommend this movie to anyone unless you are looking for something to put you to sleep"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "A complete waste of time and money I wish I had chosen to watch something else"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "If you are considering watching this just dont You will thank me later for saving you the trouble"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))

# --- Mixed Nuanced opinions ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "It had its moments but overall it was just okay nothing special"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Parts of it were good but other parts were quite confusing and dragged on"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I can see why some people liked it but it wasnt really my cup of tea"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Its not the worst movie Ive seen but definitely not the best either somewhere in the middle"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "There were some interesting ideas but the execution was lacking and inconsistent"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "It had potential but it didnt quite live up to it which is a shame"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Its a mixed bag some good aspects some not so good ultimately average"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Not terrible but not great either just a very okay movie if you have nothing else to watch"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Its watchable but dont expect to be blown away or remember it for very long"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "If you are really bored maybe give it a try otherwise you are not missing much really"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))


# --- More varied sentence structures emotions ---
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "The movie just left me feeling empty you know"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Honestly I was expecting so much more from this film"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "What a waste of a perfectly good evening seriously"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I am still trying to figure out what the point of this movie even was"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "If I could get those two hours of my life back I would in a heartbeat"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "Seriously dont believe the hype its really not worth it trust me"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I am actually kind of annoyed that I spent money on this to be honest"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "They really dropped the ball with this one what a disappointment truly"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "My expectations were low and somehow it still managed to disappoint me impressive"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))
curl -s -w "Query ${query_number} \n" -X POST -H "Content-Type: application/json" -d '{"text": "I am not even sure how this movie got made it was just so bad on so many levels wow"}' ${BASE_URL} -o /dev/null; query_number=$((query_number+1))