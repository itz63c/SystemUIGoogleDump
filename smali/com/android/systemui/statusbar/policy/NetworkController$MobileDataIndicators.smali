.class public final Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileDataIndicators"
.end annotation


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public description:Ljava/lang/CharSequence;

.field public isWide:Z

.field public qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public qsType:I

.field public roaming:Z

.field public showTriangle:Z

.field public statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public statusType:I

.field public subId:I

.field public typeContentDescription:Ljava/lang/CharSequence;

.field public typeContentDescriptionHtml:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 114
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 115
    iput p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->statusType:I

    .line 116
    iput p4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->qsType:I

    .line 117
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->activityIn:Z

    .line 118
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->activityOut:Z

    .line 119
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    .line 120
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->typeContentDescriptionHtml:Ljava/lang/CharSequence;

    .line 121
    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->description:Ljava/lang/CharSequence;

    .line 122
    iput-boolean p10, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->isWide:Z

    .line 123
    iput p11, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->subId:I

    .line 124
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->roaming:Z

    .line 125
    iput-boolean p13, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->showTriangle:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileDataIndicators["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statusIcon="

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",qsIcon="

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",statusType="

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->statusType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",qsType="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->qsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",activityIn="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->activityIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",activityOut="

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->activityOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",typeContentDescription="

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ",typeContentDescriptionHtml="

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->typeContentDescriptionHtml:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ",description="

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->description:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ",isWide="

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->isWide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",subId="

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",roaming="

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->roaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",showTriangle="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->showTriangle:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
