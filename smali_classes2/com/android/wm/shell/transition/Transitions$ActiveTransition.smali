.class final Lcom/android/wm/shell/transition/Transitions$ActiveTransition;
.super Ljava/lang/Object;
.source "Transitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Transitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActiveTransition"
.end annotation


# instance fields
.field mFirstHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFirstHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$1;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>()V

    return-void
.end method
