.class final enum Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;
.super Ljava/lang/Enum;
.source "ControlsMetricsLogger.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ControlsMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ControlsEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

.field public static final enum CONTROL_DRAG:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

.field public static final enum CONTROL_LONG_PRESS:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

.field public static final enum CONTROL_REFRESH_BEGIN:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

.field public static final enum CONTROL_REFRESH_END:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

.field public static final enum CONTROL_TOUCH:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;


# instance fields
.field private final metricId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 73
    new-instance v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const-string v1, "CONTROL_TOUCH"

    const/4 v2, 0x0

    const/16 v3, 0x2ca

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_TOUCH:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    .line 76
    new-instance v1, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const-string v3, "CONTROL_DRAG"

    const/4 v4, 0x1

    const/16 v5, 0x2c9

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_DRAG:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    .line 79
    new-instance v3, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const-string v5, "CONTROL_LONG_PRESS"

    const/4 v6, 0x2

    const/16 v7, 0x2cb

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_LONG_PRESS:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    .line 82
    new-instance v5, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const-string v7, "CONTROL_REFRESH_BEGIN"

    const/4 v8, 0x3

    const/16 v9, 0x2cc

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_BEGIN:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    .line 85
    new-instance v7, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const-string v9, "CONTROL_REFRESH_END"

    const/4 v10, 0x4

    const/16 v11, 0x2cd

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_END:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->$VALUES:[Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->metricId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 89
    check-cast p0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;
    .locals 4

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->$VALUES:[Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->metricId:I

    return p0
.end method
