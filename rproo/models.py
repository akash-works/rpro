from django.db import models

# Create your models here.
class Contact (models.Model):
    name = models.CharField(max_length=100,null=True,blank=True)
    email = models.EmailField( max_length=254,null=True,blank=True)
    phone = models.PositiveIntegerField( blank=True,null=True, help_text='Contact phone number')
    message = models.TextField(null=True,blank=True)

    def __str__(self):
        return self.name