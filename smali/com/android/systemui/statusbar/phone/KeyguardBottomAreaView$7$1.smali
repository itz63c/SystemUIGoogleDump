.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7$1;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 731
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method
