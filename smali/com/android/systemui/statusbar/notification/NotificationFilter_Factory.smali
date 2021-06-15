.class public final Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;
.super Ljava/lang/Object;
.source "NotificationFilter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mediaFeatureFlagProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaFeatureFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
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
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaFeatureFlag;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->mediaFeatureFlagProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaFeatureFlag;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/MediaFeatureFlag;)Lcom/android/systemui/statusbar/notification/NotificationFilter;
    .locals 1

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFilter;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/MediaFeatureFlag;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/NotificationFilter;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->mediaFeatureFlagProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaFeatureFlag;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->newInstance(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/MediaFeatureFlag;)Lcom/android/systemui/statusbar/notification/NotificationFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->get()Lcom/android/systemui/statusbar/notification/NotificationFilter;

    move-result-object p0

    return-object p0
.end method
