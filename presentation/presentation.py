#!/bin/python3.8

##################################
# DevOps Presentation Brown Bag
# 20210921
# Mitchell Ciupak
##################################

from print import color

def Introduce_IaCBasic():
    print(color.BOLD + color.UNDERLINE + "I. What is Infrastructure as Code?" + color.END)
    print(color.UNDERLINE + "\na. The Problem w/ Manual Configuration" + color.END)
    print("Manually configuring your cloud infrastructure allow you to easily start using new service offerings to quickly prototype architectures hoewever it comes with many downsides:")
    print("* It is easy to mis-configure a service throygh human error.")
    print("* It is difficult to manage or move the expected state of your configuration.")
    print("* It is difficult to transfer knowledge of the configurations to other team members.")
    print(color.UNDERLINE + "\nb. Infrastructure as Code (IaC)" + color.END)
    print("You simply write a configuration script to automate the creation, updates, and destruction of your cloud infrastructure.")
    print("* IaC is a blueprint for your infrastructure.")
    print("* IaC can be easily shared, versioned, and acts as an inventory for your cloud infrastrucure.")

    print("\n Open ./assets/assets-pres/iac-visual.png\n")
    return
def Introduce_IaCTools():
    print(color.BOLD + color.UNDERLINE + "II. Popular Infrastructure as Code Tools" + color.END)
    print(color.UNDERLINE + "\na. Declarative v. Imperative" + color.END)
    print("There are two types of these tools. Declarative and Imperative. Declarative tools are explicit, largely non-conditional, and are typically written in JSON, YAML, or XML. Imperatice tools tie into programming languages and offer the ability to be nested in conditionals or loops of the language, making them prone to misconfiguration.")
    print(color.UNDERLINE + "\nb. Declarative Examples" + color.END)
    print("* Azure Blueprints")
    print("* AWS Cloudformation")
    print("* Cloud Deployment Manager")
    print("* Terraform")
    print(color.UNDERLINE + "\nc. Imperative Examples (AWS CKD)" + color.END)
    print("* AWS CKD")
    print(color.UNDERLINE + "\nd. More abt Terraform" + color.END)
    print("Terraform is a delcerative IaC tool with it's own language that supports loops, complex data strucures, and dynamic blocks to a limited functional capacity. Offering the best of both worlds.")
    return
def Introduce_InfraLifecycles():
    # III. Infrastructure Lifecycle
    # a. What is an Infrastructure's Lifecycle?
    # b. An Infrastructure Lifecycle Example
    return
def Introduce_InfraTools():
    # IV. Provisioning v. Deployment v. Ochestration
    # a. Provisioning
    # b. Deployment
    # c. Ochestration
    return
def Introduce_GitOps():
    # V. What is GitOps?
    return
def Introduce_Terraform():
    # VI. Terraform Re-Intro
    # a. What is Terraform Again?
    # b. Terraform Lifecycle
    # c. Change Automation
    # d. Execution Plans
    # e. Resource Graphs
    # f. Use Cases
    return

def Introduction():
    Introduce_IaCBasic()
    Introduce_IaCTools()
    Introduce_InfraLifecycles()
    Introduce_InfraTools()
    Introduce_GitOps()
    Introduce_Terraform()

def Introduce_TerraformSpotifyPlugin():
    return
def Introduce_ContributionRules():
    return

def Workshop():
    Introduce_Terraform()
    Introduce_TerraformSpotifyPlugin()
    Introduce_ContributionRules()

def Agenda():
    Introduction()
    Workshop()

if __name__ == "__main__":
    Agenda()


