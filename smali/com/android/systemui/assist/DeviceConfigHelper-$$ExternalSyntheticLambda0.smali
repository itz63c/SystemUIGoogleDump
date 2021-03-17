.class public final synthetic Lcom/android/systemui/assist/DeviceConfigHelper-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/DeviceConfigHelper-$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/assist/DeviceConfigHelper-$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/DeviceConfigHelper-$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/assist/DeviceConfigHelper-$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/systemui/assist/DeviceConfigHelper;->$r8$lambda$cz35bxq-ng135MsN1l5qr7-LzX4(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
