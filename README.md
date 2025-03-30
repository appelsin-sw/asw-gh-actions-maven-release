# asw-gh-actions-maven-release


#      - name: Release
#        working-directory: .
#        run: |
#          export TAG=$(sed '1q;d' .next_version | sed 's/tag=//g')
#          export RELEASE_VERSION=$(sed '2q;d' .next_version | sed 's/release_version=//g')
#          export DEVELOPMENT_VERSION=$(sed '3q;d' .next_version | sed 's/development_version=//g')
#          echo "Tag: ${TAG}"
#          echo "Next release version: ${RELEASE_VERSION}"
#          echo "Next development version: ${DEVELOPMENT_VERSION}"

#          git config --global user.email "${{ secrets.GH_ACTIONS_EMAIL }}"
#          git config --global user.name "${{ secrets.GH_ACTIONS_USERNAME }}"

#          mkdir -p ${HOME}/.ssh
#          echo "${{ secrets.GH_ACTIONS_SSH_KEY }}" > ${HOME}/.ssh/id_ed25519
#          chmod 400 ${HOME}/.ssh/id_ed25519

#          mvn --batch-mode -Dtag=${TAG} release:prepare -DreleaseVersion=${RELEASE_VERSION} -DdevelopmentVersion=${DEVELOPMENT_VERSION}
#          mvn --batch-mode release:perform
