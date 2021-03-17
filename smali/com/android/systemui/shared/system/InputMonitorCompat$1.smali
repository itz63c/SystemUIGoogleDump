.class Lcom/android/systemui/shared/system/InputMonitorCompat$1;
.super Ljava/lang/Object;
.source "InputMonitorCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/InputMonitorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/systemui/shared/system/InputMonitorCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/shared/system/InputMonitorCompat;
    .locals 1

    .line 105
    new-instance p0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Landroid/os/Parcel;Lcom/android/systemui/shared/system/InputMonitorCompat$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/InputMonitorCompat$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/systemui/shared/system/InputMonitorCompat;
    .locals 0

    .line 110
    new-array p0, p1, [Lcom/android/systemui/shared/system/InputMonitorCompat;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/InputMonitorCompat$1;->newArray(I)[Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-result-object p0

    return-object p0
.end method
