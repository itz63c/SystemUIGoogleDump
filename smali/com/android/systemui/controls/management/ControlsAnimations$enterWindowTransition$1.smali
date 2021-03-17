.class final Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlsAnimations.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsAnimations;->enterWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Landroid/animation/Animator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsAnimations;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsAnimations;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;->this$0:Lcom/android/systemui/controls/management/ControlsAnimations;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/View;)Landroid/animation/Animator;
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;->this$0:Lcom/android/systemui/controls/management/ControlsAnimations;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;->invoke(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
