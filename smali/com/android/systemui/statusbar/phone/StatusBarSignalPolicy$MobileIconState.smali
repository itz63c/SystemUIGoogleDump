.class public Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
.super Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;
.source "StatusBarSignalPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileIconState"
.end annotation


# instance fields
.field public needsLeadingPadding:Z

.field public roaming:Z

.field public showTriangle:Z

.field public strengthId:I

.field public subId:I

.field public typeContentDescription:Ljava/lang/CharSequence;

.field public typeId:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 592
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    .line 593
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V
    .locals 0

    .line 582
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(I)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 582
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyStates(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static copyStates(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;"
        }
    .end annotation

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 641
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 642
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(I)V

    .line 643
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 644
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 2

    .line 623
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(I)V

    .line 624
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 1

    .line 629
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;)V

    .line 630
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    .line 631
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    .line 632
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    .line 633
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showTriangle:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showTriangle:Z

    .line 634
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 635
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needsLeadingPadding:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needsLeadingPadding:Z

    .line 636
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 598
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 604
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 605
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showTriangle:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showTriangle:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needsLeadingPadding:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needsLeadingPadding:Z

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    .line 611
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 618
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showTriangle:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needsLeadingPadding:Z

    .line 619
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 618
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileIconState(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strengthId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showTriangle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showTriangle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
