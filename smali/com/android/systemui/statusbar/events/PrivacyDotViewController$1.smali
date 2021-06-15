.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;
.super Ljava/lang/Object;
.source "PrivacyDotViewController.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/events/PrivacyDotViewController;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpandedChanged(Z)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$updateStatusBarState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$updateStatusBarState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    return-void
.end method
