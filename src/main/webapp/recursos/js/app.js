$(document).ready(function() {
  $('#form-capacitacion').validate({
    rules: {
      titulo: {
        required: true,
        minlength: 8,
        maxlength: 20
      },
      hora: {
        required: true
      },
      duracion: {
        required: true,
		digits: true,
		min: 30,
		max: 180
      },
      lugar: {
        required: true,
        minlength: 5,
        maxlength: 20
      },
      asistentes: {
        required: true,
		digits: true,
		min: 10,
		max: 60
      }
    },
    messages: {
      titulo: {
        required: "El título es requerido.",
        minlength: "El título debe tener al menos 8 caracteres.",
        maxlength: "El título no puede tener más de 20 caracteres."
      },
      hora: {
        required: "La hora es requerida."
      },
      duracion: {
        required: "La duración es requerida.",
        digits: "La duración debe ser un número entero.",
        min: "La duracion debe ser mayor a 30",
        max: "La duracion debe ser menor a 180"        
      },
      lugar: {
        required: "El lugar es requerido.",
        minlength: "El lugar debe tener al menos 5 caracteres.",
        maxlength: "El lugar no puede tener más de 20 caracteres."
      },
      asistentes: {
        required: "El número de asistentes es requerido.",
        digits: "Debe ingresar un número entero.",
        min: "Cantidad de asistentes debe ser mayor a 10",
        max: "Cantidad de asistentes debe ser menor a 60"  
      }
    },
    errorElement: "span",
    errorPlacement: function(error, element) {
      error.addClass("text-danger");
      error.insertAfter(element);
    },
    highlight: function(element) {
      $(element).addClass("is-invalid");
    },
    unhighlight: function(element) {
      $(element).removeClass("is-invalid");
    },
    submitHandler: function(form) {
      event.preventDefault();
      form.submit();
    }
  });
  
  //validacion formulario contacto
  $('#form-contact').validate({
    rules: {
      name: {
        required: true,
        minlength: 2,
        maxlength: 15
      },
      lastname: {
        required: true,
        minlength: 2,
        maxlength: 15
      },
      email: {
        required: true,
        email: true,
        minlength: 10,
        maxlength: 50
      },
      message: {
        required: true,
        minlength: 20,
        maxlength: 150
      }
    },
    messages: {
      name: {
        required: "El nombre es requerido.",
        minlength: "El nombre debe tener al menos 2 caracteres.",
        maxlength: "El nombre no puede tener más de 15 caracteres."
      },
      lastname: {
        required: "El apellido es requerido.",
        minlength: "El apellido debe tener al menos 2 caracteres.",
        maxlength: "El apellido no puede tener más de 15 caracteres."
      },
      email: {
        required: "El email es requerido.",
        email: "Por favor, ingrese un email válido.",
        minlength: "El email debe tener al menos 10 caracteres.",
        maxlength: "El email no puede tener más de 50 caracteres."
      },
      message: {
        required: "El mensaje es requerido.",
        minlength: "El mensaje debe tener al menos 20 caracteres.",
        maxlength: "El mensaje no puede tener más de 150 caracteres."
      }
    },
    errorElement: "span",
    errorPlacement: function(error, element) {
      error.addClass("text-danger");
      error.insertAfter(element);
    },
    highlight: function(element) {
      $(element).addClass("is-invalid");
    },
    unhighlight: function(element) {
      $(element).removeClass("is-invalid");
    },
    submitHandler: function(form) {
      event.preventDefault();
      form.submit();
    }
  });
});