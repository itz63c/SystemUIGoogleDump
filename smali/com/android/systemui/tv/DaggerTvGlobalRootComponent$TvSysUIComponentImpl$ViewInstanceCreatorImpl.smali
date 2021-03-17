.class final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewInstanceCreatorImpl"
.end annotation


# instance fields
.field private final attributeSet:Landroid/util/AttributeSet;

.field private final context:Landroid/content/Context;

.field final synthetic this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3511
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3512
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->context:Landroid/content/Context;

    .line 3513
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->attributeSet:Landroid/util/AttributeSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V
    .locals 0

    .line 3506
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private notificationSectionsManager()Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
    .locals 11

    .line 3517
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/media/KeyguardMediaController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object v8

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;)V

    return-object v10
.end method


# virtual methods
.method public createNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 9

    .line 3522
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->attributeSet:Landroid/util/AttributeSet;

    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->notificationSectionsManager()Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$8000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$8100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$8200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    return-object v8
.end method
