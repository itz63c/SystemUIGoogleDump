.class public Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;
.super Ljava/lang/Object;
.source "ReverseChargingMetrics.java"


# static fields
.field protected static final DEBUG:Z

.field private static final RDN:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ReverseChargingMetrics"

    const/4 v1, 0x3

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->DEBUG:Z

    .line 31
    invoke-static {}, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->newBuilder()Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    sput-object v0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->RDN:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    return-void
.end method

.method private static createVendorAtom(I)Landroid/frameworks/stats/VendorAtom;
    .locals 2

    .line 70
    new-instance v0, Landroid/frameworks/stats/VendorAtom;

    invoke-direct {v0}, Landroid/frameworks/stats/VendorAtom;-><init>()V

    .line 71
    sget-object v1, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->RDN:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->getPixel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/frameworks/stats/VendorAtom;->reverseDomainName:Ljava/lang/String;

    .line 72
    new-array p0, p0, [Landroid/frameworks/stats/VendorAtomValue;

    .line 73
    iput-object p0, v0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    return-object v0
.end method

.method public static logReceiverType(I)V
    .locals 5

    const/4 v0, 0x1

    .line 125
    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->createVendorAtom(I)Landroid/frameworks/stats/VendorAtom;

    move-result-object v1

    const v2, 0x186c8

    .line 126
    iput v2, v1, Landroid/frameworks/stats/VendorAtom;->atomId:I

    .line 127
    iget-object v2, v1, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-eq p0, v4, :cond_1

    const/16 v4, 0x72

    if-ne p0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 128
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object p0

    aput-object p0, v2, v3

    .line 131
    invoke-static {v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V

    return-void
.end method

.method public static logStartEvent(II)V
    .locals 3

    const/4 v0, 0x2

    .line 105
    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->createVendorAtom(I)Landroid/frameworks/stats/VendorAtom;

    move-result-object v0

    const v1, 0x186c5

    .line 106
    iput v1, v0, Landroid/frameworks/stats/VendorAtom;->atomId:I

    .line 107
    iget-object v1, v0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {p0}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 108
    iget-object p0, v0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p0, v1

    .line 110
    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V

    return-void
.end method

.method public static logStopEvent(IIJ)V
    .locals 3

    const/4 v0, 0x3

    .line 115
    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->createVendorAtom(I)Landroid/frameworks/stats/VendorAtom;

    move-result-object v0

    const v1, 0x186c6

    .line 116
    iput v1, v0, Landroid/frameworks/stats/VendorAtom;->atomId:I

    .line 117
    iget-object v1, v0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {p0}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 118
    iget-object p0, v0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p0, v1

    .line 119
    iget-object p0, v0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {p2, p3}, Landroid/frameworks/stats/VendorAtomValue;->longValue(J)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    .line 121
    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V

    return-void
.end method

.method private static reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V
    .locals 3

    const-string v0, "ReverseChargingMetrics"

    .line 91
    :try_start_0
    invoke-static {}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->tryConnectingToStatsService()Ljava/util/Optional;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/frameworks/stats/IStats;

    invoke-interface {v1, p0}, Landroid/frameworks/stats/IStats;->reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V

    .line 96
    sget-boolean v1, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report vendor atom OK, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to log atom to IStats service, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static tryConnectingToStatsService()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/frameworks/stats/IStats;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/frameworks/stats/IStats;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "ReverseChargingMetrics"

    const-string v1, "IStats is not registered"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/frameworks/stats/IStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/stats/IStats;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
