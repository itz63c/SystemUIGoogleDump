.class public final Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;
.super Ljava/lang/Object;
.source "OpaLockscreen_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->statusBarProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;)",
            "Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;
    .locals 1

    .line 40
    new-instance v0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0, p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->newInstance(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;->get()Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;

    move-result-object p0

    return-object p0
.end method
