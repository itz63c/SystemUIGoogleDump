.class final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerSysUIGoogleGlobalRootComponent.java"

# interfaces
.implements Lcom/google/android/systemui/dagger/SysUIGoogleSysUIComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SysUIGoogleSysUIComponentBuilder"
.end annotation


# instance fields
.field private setAppPairs:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;"
        }
    .end annotation
.end field

.field private setBubbles:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation
.end field

.field private setHideDisplayCutout:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private setLegacySplitScreen:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private setOneHanded:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;"
        }
    .end annotation
.end field

.field private setPip:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation
.end field

.field private setShellCommandHandler:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private setSplitScreen:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private setTaskViewFactory:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private setTransitions:Lcom/android/wm/shell/transition/RemoteTransitions;

.field final synthetic this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)V
    .locals 0

    .line 1831
    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$1;)V
    .locals 0

    .line 1831
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/systemui/dagger/SysUIComponent;
    .locals 0

    .line 1831
    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->build()Lcom/google/android/systemui/dagger/SysUIGoogleSysUIComponent;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/google/android/systemui/dagger/SysUIGoogleSysUIComponent;
    .locals 19

    move-object/from16 v0, p0

    .line 1915
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1916
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setLegacySplitScreen:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1917
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1918
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setAppPairs:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1919
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1920
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1921
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1922
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setHideDisplayCutout:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1923
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setShellCommandHandler:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1924
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/RemoteTransitions;

    const-class v2, Lcom/android/wm/shell/transition/RemoteTransitions;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1925
    new-instance v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v4, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    new-instance v5, Lcom/android/systemui/dagger/DependencyProvider;

    invoke-direct {v5}, Lcom/android/systemui/dagger/DependencyProvider;-><init>()V

    new-instance v6, Lcom/android/systemui/dagger/NightDisplayListenerModule;

    invoke-direct {v6}, Lcom/android/systemui/dagger/NightDisplayListenerModule;-><init>()V

    new-instance v7, Lcom/android/systemui/user/UserModule;

    invoke-direct {v7}, Lcom/android/systemui/user/UserModule;-><init>()V

    iget-object v8, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    iget-object v9, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setLegacySplitScreen:Ljava/util/Optional;

    iget-object v10, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    iget-object v11, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setAppPairs:Ljava/util/Optional;

    iget-object v12, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    iget-object v13, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    iget-object v15, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setHideDisplayCutout:Ljava/util/Optional;

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setShellCommandHandler:Ljava/util/Optional;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/RemoteTransitions;

    const/16 v18, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-direct/range {v3 .. v18}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$1;)V

    return-object v1
.end method

.method public bridge synthetic setAppPairs(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setAppPairs(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setAppPairs(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;)",
            "Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;"
        }
    .end annotation

    .line 1872
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setAppPairs:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setBubbles(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setBubbles(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)",
            "Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;"
        }
    .end annotation

    .line 1884
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setHideDisplayCutout(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setHideDisplayCutout(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setHideDisplayCutout(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;)",
            "Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;"
        }
    .end annotation

    .line 1896
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setHideDisplayCutout:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setLegacySplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setLegacySplitScreen(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setLegacySplitScreen(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;)",
            "Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;"
        }
    .end annotation

    .line 1860
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setLegacySplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setOneHanded(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setOneHanded(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;)",
            "Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;"
        }
    .end annotation

    .line 1878
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setPip(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPip(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;)",
            "Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;"
        }
    .end annotation

    .line 1854
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setShellCommandHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setShellCommandHandler(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setShellCommandHandler(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;)",
            "Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;"
        }
    .end annotation

    .line 1903
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setShellCommandHandler:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setSplitScreen(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setSplitScreen(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;)",
            "Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;"
        }
    .end annotation

    .line 1866
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setTaskViewFactory(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setTaskViewFactory(Ljava/util/Optional;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;)",
            "Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;"
        }
    .end annotation

    .line 1890
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setTransitions(Lcom/android/wm/shell/transition/RemoteTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setTransitions(Lcom/android/wm/shell/transition/RemoteTransitions;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setTransitions(Lcom/android/wm/shell/transition/RemoteTransitions;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;
    .locals 0

    .line 1909
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/RemoteTransitions;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/RemoteTransitions;

    return-object p0
.end method
