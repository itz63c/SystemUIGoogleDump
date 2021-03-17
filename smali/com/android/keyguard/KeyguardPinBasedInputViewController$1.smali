.class Lcom/android/keyguard/KeyguardPinBasedInputViewController$1;
.super Ljava/lang/Object;
.source "KeyguardPinBasedInputViewController.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->access$000(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)Lcom/android/systemui/classifier/FalsingCollector;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->avoidGesture()V

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
