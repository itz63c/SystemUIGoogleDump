.class public final synthetic Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->$r8$lambda$tj91cAfhSHKCJaCYzTVhQsMyKtQ(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method