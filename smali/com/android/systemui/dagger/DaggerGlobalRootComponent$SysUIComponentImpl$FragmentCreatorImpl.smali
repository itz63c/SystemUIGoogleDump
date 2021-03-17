.class final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentService$FragmentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FragmentCreatorImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)V
    .locals 0

    .line 3943
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V
    .locals 0

    .line 3942
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)V

    return-void
.end method


# virtual methods
.method public createQSFragment()Lcom/android/systemui/qs/QSFragment;
    .locals 12

    .line 3949
    new-instance v11, Lcom/android/systemui/qs/QSFragment;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$17700(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$16100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/util/InjectionInflationController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$17800(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$7100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$14200(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$15300(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/qs/QSDetailDisplayer;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$17900(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/media/MediaHost;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$18000(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/media/MediaHost;

    new-instance v9, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentFactory;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentFactory;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$FragmentCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$9300(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/systemui/statusbar/FeatureFlags;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/QSFragment;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;Lcom/android/systemui/statusbar/FeatureFlags;)V

    return-object v11
.end method
