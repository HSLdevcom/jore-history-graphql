FROM node:10

ENV WORKDIR /opt/jore

RUN mkdir -p ${WORKDIR}
WORKDIR ${WORKDIR}

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY package.json ${WORKDIR}
COPY yarn.lock ${WORKDIR}
RUN yarn
COPY . ${WORKDIR}

EXPOSE 5000

CMD [ "yarn", "start" ]
