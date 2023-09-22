FROM ruby:3.2.2-alpine3.18

LABEL "com.github.actions.name"="Comment on PR"
LABEL "com.github.actions.description"="Leaves a comment on an open PR matching a push event."
LABEL "com.github.actions.repository"="https://github.com/davefurmidge/pr-comment"
LABEL "com.github.actions.maintainer"="davefurmidge<Davefurmidge@epam.com>"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="blue"

RUN gem install octokit

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]