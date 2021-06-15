.class final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewInstanceCreatorImpl"
.end annotation


# instance fields
.field private final attributeSet:Landroid/util/AttributeSet;

.field private final context:Landroid/content/Context;

.field final synthetic this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4022
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4023
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->context:Landroid/content/Context;

    .line 4024
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->attributeSet:Landroid/util/AttributeSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V
    .locals 0

    .line 4017
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private notificationSectionsManager()Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
    .locals 11

    .line 4028
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$9000(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$7600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$11600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/media/KeyguardMediaController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$11700(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$11800(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$11900(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$12000(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$12100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object v8

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$12200(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;)V

    return-object v10
.end method


# virtual methods
.method public createNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 10

    .line 4033
    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->attributeSet:Landroid/util/AttributeSet;

    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->notificationSectionsManager()Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10400(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10500(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$9000(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$12300(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$12400(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/statusbar/FeatureFlags;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/FeatureFlags;)V

    return-object v9
.end method
