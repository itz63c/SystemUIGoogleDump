.class public Lcom/android/wm/shell/onehanded/OneHandedState;
.super Ljava/lang/Object;
.source "OneHandedState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneHandedState"

.field private static sCurrentState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    .line 49
    sput p0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 93
    sget-object p0, Lcom/android/wm/shell/onehanded/OneHandedState;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  sCurrentState="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getState()I
    .locals 0

    .line 63
    sget p0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    return p0
.end method

.method public isInOneHanded()Z
    .locals 1

    .line 79
    sget p0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransitioning()Z
    .locals 2

    .line 71
    sget p0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public setState(I)V
    .locals 0

    .line 87
    sput p1, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    return-void
.end method
