.class public Lcom/android/settingslib/SignalIcon$MobileState;
.super Lcom/android/settingslib/SignalIcon$State;
.source "SignalIcon.java"


# instance fields
.field public airplaneMode:Z

.field public carrierNetworkChangeMode:Z

.field public dataConnected:Z

.field public dataSim:Z

.field public defaultDataOff:Z

.field public isDefault:Z

.field public isEmergency:Z

.field public networkName:Ljava/lang/String;

.field public networkNameData:Ljava/lang/String;

.field public roaming:Z

.field public userSetup:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/android/settingslib/SignalIcon$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/settingslib/SignalIcon$State;)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Lcom/android/settingslib/SignalIcon$State;->copyFrom(Lcom/android/settingslib/SignalIcon$State;)V

    .line 176
    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileState;

    .line 177
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    .line 178
    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 180
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    .line 181
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    .line 182
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    .line 183
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    .line 184
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 185
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    .line 186
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    .line 187
    iget-boolean p1, p1, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    iput-boolean p1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 210
    invoke-super {p0, p1}, Lcom/android/settingslib/SignalIcon$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 211
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 212
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    iget-boolean p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Lcom/android/settingslib/SignalIcon$State;->toString(Ljava/lang/StringBuilder;)V

    const/16 v0, 0x2c

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "dataSim="

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "networkName="

    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "networkNameData="

    .line 196
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "dataConnected="

    .line 197
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "roaming="

    .line 198
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isDefault="

    .line 199
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isEmergency="

    .line 200
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "airplaneMode="

    .line 201
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "carrierNetworkChangeMode="

    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userSetup="

    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "defaultDataOff="

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method
