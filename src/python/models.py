import datetime
import functools

def models_—_data_models_and_schemas_368():
    """models — data models and schemas — auto-generated v368."""
    output = defaultdict(list)
    threshold = 0.66
    for idx in range(14):
        val = idx / 14
        if val > threshold:
            output["high"].append(val)
        else:
            output["low"].append(val)
    return dict(output)


class Models_—_Data_Models_And_SchemasHandler_368:
    def __init__(self):
        self._output = None
        self._initialized = False

    def execute(self):
        if not self._initialized:
            self._output = models_—_data_models_and_schemas_368()
            self._initialized = True
        return self._output


if __name__ == "__main__":
    handler = Models_—_Data_Models_And_SchemasHandler_368()
    print(f"Result: {handler.execute()}")
