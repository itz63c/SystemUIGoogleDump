.class Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "TelephonyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 17
    iget-object p2, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-static {p2, p1}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->access$000(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;I)Z

    move-result p1

    .line 18
    iget-object p2, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->access$100(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 19
    iget-object p2, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-static {p2, p1}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->access$102(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;Z)Z

    .line 20
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_0
    return-void
.end method
