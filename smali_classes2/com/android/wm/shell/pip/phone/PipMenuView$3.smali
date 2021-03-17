.class Lcom/android/wm/shell/pip/phone/PipMenuView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/phone/PipMenuView;->showMenu(ILandroid/graphics/Rect;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/16 p1, 0xdac

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->access$300(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    return-void
.end method
