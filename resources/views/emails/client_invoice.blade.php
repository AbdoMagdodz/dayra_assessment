<!DOCTYPE html>
<html>
<head>
    <title>Client Invoice</title>
</head>
<body>
<h1>Hello, {{ $data['full_name'] }}</h1>
<h4>This is your invoice</h4>
<table style="margin: 10px;border: 1px dashed red">
    <thead>
    <tr style="border: 1px dashed red">
        <th>Amount</th>
        <th>Due Date</th>
    </tr>
    </thead>
    <tbody>
    <tr style="border: 1px dashed red">
        <td>{{$data['amount']}}</td>
        <td>{{date('Y-m-d', strtotime($data['due_date']))}}</td>
    </tr>
    </tbody>
</table>

<p>Thank you</p>
<p>{{\Carbon\Carbon::now()}}</p>
</body>
</html>