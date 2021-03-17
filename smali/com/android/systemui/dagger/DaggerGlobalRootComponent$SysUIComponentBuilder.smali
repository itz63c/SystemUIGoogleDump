.class final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dagger/SysUIComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SysUIComponentBuilder"
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

.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)V
    .locals 0

    .line 1638
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V
    .locals 0

    .line 1638
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/dagger/SysUIComponent;
    .locals 19

    move-object/from16 v0, p0

    .line 1721
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setPip:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1722
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setLegacySplitScreen:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1723
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1724
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setAppPairs:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1725
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1726
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1727
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1728
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setHideDisplayCutout:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1729
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setShellCommandHandler:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1730
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/RemoteTransitions;

    const-class v2, Lcom/android/wm/shell/transition/RemoteTransitions;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1731
    new-instance v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    new-instance v5, Lcom/android/systemui/dagger/DependencyProvider;

    invoke-direct {v5}, Lcom/android/systemui/dagger/DependencyProvider;-><init>()V

    new-instance v6, Lcom/android/systemui/dagger/NightDisplayListenerModule;

    invoke-direct {v6}, Lcom/android/systemui/dagger/NightDisplayListenerModule;-><init>()V

    new-instance v7, Lcom/android/systemui/user/UserModule;

    invoke-direct {v7}, Lcom/android/systemui/user/UserModule;-><init>()V

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setPip:Ljava/util/Optional;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setLegacySplitScreen:Ljava/util/Optional;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setAppPairs:Ljava/util/Optional;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setHideDisplayCutout:Ljava/util/Optional;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setShellCommandHandler:Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/RemoteTransitions;

    const/16 v18, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-direct/range {v3 .. v18}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V

    return-object v1
.end method

.method public setAppPairs(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 1679
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setAppPairs:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setAppPairs(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setAppPairs(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 1691
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setHideDisplayCutout(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 1703
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setHideDisplayCutout:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setHideDisplayCutout(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setHideDisplayCutout(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setLegacySplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 1667
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setLegacySplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setLegacySplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setLegacySplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 1685
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 1661
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setPip:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setShellCommandHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 1709
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setShellCommandHandler:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setShellCommandHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setShellCommandHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 1673
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 1697
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setTransitions(Lcom/android/wm/shell/transition/RemoteTransitions;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0

    .line 1715
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/RemoteTransitions;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/RemoteTransitions;

    return-object p0
.end method

.method public bridge synthetic setTransitions(Lcom/android/wm/shell/transition/RemoteTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTransitions(Lcom/android/wm/shell/transition/RemoteTransitions;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method
