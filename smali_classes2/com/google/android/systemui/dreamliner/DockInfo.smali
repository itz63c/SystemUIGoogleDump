.class public Lcom/google/android/systemui/dreamliner/DockInfo;
.super Ljava/lang/Object;
.source "DockInfo.java"


# instance fields
.field private accessoryType:I

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->manufacturer:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->model:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->serialNumber:Ljava/lang/String;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->accessoryType:I

    .line 23
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->manufacturer:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->model:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->serialNumber:Ljava/lang/String;

    .line 26
    iput p4, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->accessoryType:I

    return-void
.end method


# virtual methods
.method toBundle()Landroid/os/Bundle;
    .locals 3

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->manufacturer:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->model:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->serialNumber:Ljava/lang/String;

    const-string v2, "serialNumber"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->accessoryType:I

    const-string v1, "accessoryType"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->accessoryType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
