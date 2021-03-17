.class public final Lcom/android/systemui/tuner/TunerActivity_Factory;
.super Ljava/lang/Object;
.source "TunerActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/tuner/TunerActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final demoModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerActivity_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunerActivity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;)",
            "Lcom/android/systemui/tuner/TunerActivity_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/tuner/TunerActivity_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerActivity_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/demomode/DemoModeController;)Lcom/android/systemui/tuner/TunerActivity;
    .locals 1

    .line 34
    new-instance v0, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerActivity;-><init>(Lcom/android/systemui/demomode/DemoModeController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/tuner/TunerActivity;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerActivity_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/demomode/DemoModeController;

    invoke-static {p0}, Lcom/android/systemui/tuner/TunerActivity_Factory;->newInstance(Lcom/android/systemui/demomode/DemoModeController;)Lcom/android/systemui/tuner/TunerActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity_Factory;->get()Lcom/android/systemui/tuner/TunerActivity;

    move-result-object p0

    return-object p0
.end method
