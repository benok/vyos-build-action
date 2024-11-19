#!/bin/sh
. ./action_vers.env
sed \
	-e "s!\(actions/checkout\)@\([^ ]*\)!\1@${ACTIONS_CHECKOUT_VER}!g" \
	-e "s!\(actions/download-artifact\)@\([^ ]*\)!\1@${ACTIONS_DOWNLOAD_ARTIFACT_VER}!g" \
	-e "s!\(actions/upload-artifact\)@\([^ ]*\)!\1@${ACTIONS_UPLOAD_ARTIFACT_VER}!g" \
	-e "s!\(docker/build-push-action\)@\([^ ]*\)!\1@${DOCKER_BUILD_PUSH_ACTION_VER}!g" \
	-e "s!\(docker/login-action\)@\([^ ]*\)!\1@${DOCKER_LOGIN_ACTION_VER}!g" \
	-e "s!\(docker/setup-buildx-action\)@\([^ ]*\)!\1@${DOCKER_SETUP_BUILDX_ACTION_VER}!g" \
	-e "s!\(docker/setup-qemu-action\)@\([^ ]*\)!\1@${DOCKER_SETUP_QEMU_ACTION_VER}!g" \
	-e "s!\(tickert/discord-webhook\)@\([^ ]*\)!\1@${TICKERT_DISCORD_WEBHOOK_VER}!g"
