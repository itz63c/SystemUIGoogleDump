.class Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;
.super Landroid/telephony/PhoneStateListener;
.source "SilenceCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/SilenceCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/actions/SilenceCall;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 26
    iget-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-static {p2, p1}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->access$000(Lcom/google/android/systemui/elmyra/actions/SilenceCall;I)Z

    move-result p1

    .line 27
    iget-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->access$100(Lcom/google/android/systemui/elmyra/actions/SilenceCall;)Z

    move-result p2

    if-eq p2, p1, :cond_0

    .line 28
    iget-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-static {p2, p1}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->access$102(Lcom/google/android/systemui/elmyra/actions/SilenceCall;Z)Z

    .line 29
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_0
    return-void
.end method
