.class Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;
.super Ljava/lang/Object;
.source "QSCarrierGroupController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCallIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
    .locals 9

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->getSlotIndex(I)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "QSCarrierGroup"

    if-lt v0, v1, :cond_1

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setMobileDataIndicators - slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid SIM slot index for subscription: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_2
    iget p2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_4

    .line 120
    iget-boolean p2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz p2, :cond_3

    .line 121
    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iget-object v6, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v7, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, p2, v0

    goto :goto_0

    .line 126
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    .line 127
    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$300(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[I

    move-result-object v1

    aget v5, v1, v0

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    .line 128
    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$400(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Ljava/lang/String;

    move-result-object v1

    aget-object v6, v1, v0

    const/4 v8, 0x0

    const-string v7, ""

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;Z)V

    aput-object p2, p1, v0

    .line 130
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$200(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 132
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$300(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[I

    move-result-object p2

    iget v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    aput v3, p2, v0

    .line 133
    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$400(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Ljava/lang/String;

    move-result-object p2

    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    aput-object v3, p2, v0

    .line 136
    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p2

    aget-object p2, p2, v0

    iget p2, p2, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    if-eq p2, v1, :cond_5

    .line 138
    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iget-object v6, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v7, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, p2, v0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$200(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V
    .locals 0

    .line 83
    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {p2, p11}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->getSlotIndex(I)I

    move-result p2

    const/4 p3, 0x3

    const-string p4, "QSCarrierGroup"

    if-lt p2, p3, :cond_1

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setMobileDataIndicators - slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid SIM slot index for subscription: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p3}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p3

    new-instance p10, Lcom/android/systemui/qs/carrier/CellSignalState;

    iget-boolean p5, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iget p6, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    .line 99
    invoke-interface {p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p8

    move-object p4, p10

    move-object p7, p1

    move p9, p12

    invoke-direct/range {p4 .. p9}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;Z)V

    aput-object p10, p3, p2

    .line 102
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$200(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$200(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
