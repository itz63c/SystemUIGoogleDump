.class Lcom/android/systemui/biometrics/AuthController$1;
.super Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;
.source "AuthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$1;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintProvidersAvailable | sensors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 118
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$1;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/AuthController;->access$202(Lcom/android/systemui/biometrics/AuthController;Ljava/util/List;)Ljava/util/List;

    .line 122
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$1;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/AuthController;->access$200(Lcom/android/systemui/biometrics/AuthController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 124
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$1;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/AuthController;->access$302(Lcom/android/systemui/biometrics/AuthController;Ljava/util/List;)Ljava/util/List;

    .line 129
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController$1;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/AuthController;->access$300(Lcom/android/systemui/biometrics/AuthController;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 130
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController$1;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthController;->access$500(Lcom/android/systemui/biometrics/AuthController;)Ljavax/inject/Provider;

    move-result-object p1

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/AuthController;->access$402(Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsController;

    :cond_3
    return-void
.end method
