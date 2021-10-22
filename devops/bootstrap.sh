set -o errexit
set -o pipefail
set -o nounset
DEVOPS_HOME="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_HOME="$(cd "$(dirname "${DEVOPS_HOME}")" && pwd)"