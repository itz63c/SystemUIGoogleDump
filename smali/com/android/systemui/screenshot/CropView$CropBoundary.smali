.class public final enum Lcom/android/systemui/screenshot/CropView$CropBoundary;
.super Ljava/lang/Enum;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CropBoundary"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenshot/CropView$CropBoundary;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public static final enum BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public static final enum NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public static final enum TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/screenshot/CropView$CropBoundary;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    new-instance v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/screenshot/CropView$CropBoundary;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    new-instance v3, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/screenshot/CropView$CropBoundary;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/systemui/screenshot/CropView$CropBoundary;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 50
    sput-object v5, Lcom/android/systemui/screenshot/CropView$CropBoundary;->$VALUES:[Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/CropView$CropBoundary;
    .locals 1

    .line 50
    const-class v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenshot/CropView$CropBoundary;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->$VALUES:[Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/CropView$CropBoundary;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object v0
.end method
