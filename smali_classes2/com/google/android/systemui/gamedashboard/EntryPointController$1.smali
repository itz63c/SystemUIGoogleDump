.class Lcom/google/android/systemui/gamedashboard/EntryPointController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EntryPointController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/EntryPointController;->setButtonState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$200(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    return-void
.end method
