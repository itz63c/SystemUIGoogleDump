.class public final synthetic Lcom/android/keyguard/CarrierTextController-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

.field public final synthetic f$1:Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController-$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextController-$$ExternalSyntheticLambda1;->f$1:Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController-$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController-$$ExternalSyntheticLambda1;->f$1:Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    invoke-static {v0, p0}, Lcom/android/keyguard/CarrierTextController;->$r8$lambda$oDDgTY0-0dZ4Zlz2ZA72BqhDgnk(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method
