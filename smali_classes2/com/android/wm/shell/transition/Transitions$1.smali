.class Lcom/android/wm/shell/transition/Transitions$1;
.super Ljava/lang/Object;
.source "Transitions.java"

# interfaces
.implements Lcom/android/wm/shell/transition/RemoteTransitions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/transition/Transitions;->createEmptyForTesting()Lcom/android/wm/shell/transition/RemoteTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerRemote(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V
    .locals 0

    return-void
.end method

.method public unregisterRemote(Landroid/window/IRemoteTransition;)V
    .locals 0

    return-void
.end method
