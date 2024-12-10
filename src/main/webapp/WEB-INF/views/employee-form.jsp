<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1>${employee.id == null ? "Add New Employee" : "Edit Employee"}</h1>
    <form action="/employees" method="post">
        <input type="hidden" name="id" value="${employee.id}">
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" id="name" name="name" class="form-control" value="${employee.name}" required>
        </div>
        <div class="mb-3">
            <label for="department" class="form-label">Department</label>
            <input type="text" id="department" name="department" class="form-control" value="${employee.department}" required>
        </div>
        <div class="mb-3">
            <label for="salary" class="form-label">Salary</label>
            <input type="number" id="salary" name="salary" class="form-control" value="${employee.salary}" required>
        </div>
        <button type="submit" class="btn btn-success">Save</button>
        <a href="/employees" class="btn btn-secondary">Cancel</a>
    </form>
</div>
</body>
</html>
