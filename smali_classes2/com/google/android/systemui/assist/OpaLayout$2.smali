.class Lcom/google/android/systemui/assist/OpaLayout$2;
.super Ljava/lang/Object;
.source "OpaLayout.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/OpaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$2;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$2;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->updateOpaLayout()V

    return-void
.end method
