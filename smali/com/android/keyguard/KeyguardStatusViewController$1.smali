.class Lcom/android/keyguard/KeyguardStatusViewController$1;
.super Ljava/lang/Object;
.source "KeyguardStatusViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->onDensityOrFontScaleChanged()V

    .line 231
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$200(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onLocaleListChanged()V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$000(Lcom/android/keyguard/KeyguardStatusViewController;)V

    return-void
.end method
