# Homebrew Tap for Komodor CLI (`komocli`)

This is the official [Homebrew](https://brew.sh) tap for installing the [Komodor CLI](https://github.com/komodorio/komocli).

## 🚀 Installation

To install `komocli` using Homebrew:

```bash
brew install komodorio/komocli/komocli
````

## 🧪 Port Forwarding Example

The CLI allows you to port-forward into a Kubernetes object via a Komodor agent.

### Requirements:

* Agent ID
* A valid JWT token
* Target object (pod, deployment, etc.)

### Example:

```bash
komocli port-forward pod/mypod 8888:5000 \
  --namespace default \
  --cluster my-cluster \
  --token=your_jwt_token
```