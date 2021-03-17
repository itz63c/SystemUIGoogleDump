.class public final synthetic Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

.field public final synthetic f$1:Landroid/window/IRemoteTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;Landroid/window/IRemoteTransition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

    iput-object p2, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda0;->f$1:Landroid/window/IRemoteTransition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda0;->f$1:Landroid/window/IRemoteTransition;

    invoke-static {v0, p0}, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;->$r8$lambda$rkznrvVJhweh3t1KbMqJ2mUYyGo(Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;Landroid/window/IRemoteTransition;)V

    return-void
.end method
