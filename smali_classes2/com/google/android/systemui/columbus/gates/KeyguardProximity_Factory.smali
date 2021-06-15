.class public final Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;
.super Ljava/lang/Object;
.source "KeyguardProximity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardGateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final proximityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/Proximity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/Proximity;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->keyguardGateProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->proximityProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/Proximity;",
            ">;)",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/Proximity;)Lcom/google/android/systemui/columbus/gates/KeyguardProximity;
    .locals 1

    .line 42
    new-instance v0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/Proximity;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/gates/KeyguardProximity;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->keyguardGateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->proximityProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/gates/Proximity;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->newInstance(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/Proximity;)Lcom/google/android/systemui/columbus/gates/KeyguardProximity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->get()Lcom/google/android/systemui/columbus/gates/KeyguardProximity;

    move-result-object p0

    return-object p0
.end method