.class public final Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconFactory;
.super Ljava/lang/Object;
.source "StatusBarViewModule_GetLockIconFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/LockIcon;",
        ">;"
    }
.end annotation


# instance fields
.field private final notificationShadeWindowViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;",
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
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconFactory;->notificationShadeWindowViewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static getLockIcon(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule;->getLockIcon(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconFactory;->notificationShadeWindowViewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconFactory;->getLockIcon(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconFactory;->get()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p0

    return-object p0
.end method
