.class public Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;
.super Ljava/lang/Object;
.source "NvsAssetPackageParticleDescParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;
    }
.end annotation


# static fields
.field public static final EMITTER_PLACE_BOTTOM:I = 0x3

.field public static final EMITTER_PLACE_CENTER:I = 0x4

.field public static final EMITTER_PLACE_LEFT:I = 0x0

.field public static final EMITTER_PLACE_RIGHT:I = 0x1

.field public static final EMITTER_PLACE_TOP:I = 0x2

.field public static final PARTICLE_TYPE_EYE:I = 0x3

.field public static final PARTICLE_TYPE_GESTURE:I = 0x2

.field public static final PARTICLE_TYPE_MOUTH:I = 0x4

.field public static final PARTICLE_TYPE_NORMAL:I = 0x0

.field public static final PARTICLE_TYPE_TOUCH:I = 0x1


# instance fields
.field m_ParticleType:I

.field m_emitters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    .line 90
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 92
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "particleType"

    .line 93
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "touch"

    .line 94
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 95
    iput p1, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    goto :goto_0

    :cond_0
    const-string v2, "gesture"

    .line 96
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x2

    .line 97
    iput p1, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    goto :goto_0

    :cond_1
    const-string v2, "eye"

    .line 98
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x3

    .line 99
    iput p1, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    goto :goto_0

    :cond_2
    const-string v2, "mouth"

    .line 100
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    .line 101
    iput p1, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    :cond_3
    :goto_0
    const-string p1, "emitterDesc"

    .line 103
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 104
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_4

    .line 106
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 108
    invoke-direct {p0, v1}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->GetEmitterDescFromJson(Lorg/json/JSONObject;)Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 111
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 115
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    return-void
.end method

.method private GetEmitterDescFromJson(Lorg/json/JSONObject;)Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    invoke-direct {v0, p0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;-><init>(Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;)V

    const-string v1, "place"

    .line 237
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x4

    .line 239
    iput v2, v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    const-string v2, "left"

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 241
    iput v3, v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    goto :goto_1

    :cond_1
    const-string v2, "right"

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 243
    iput v1, v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "top"

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    .line 245
    iput v1, v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    goto :goto_1

    :cond_3
    const-string v2, "bottom"

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    .line 247
    iput v1, v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    :cond_4
    :goto_1
    const-string v1, "emitterName"

    .line 249
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 251
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_5

    .line 252
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object v2, v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method


# virtual methods
.method public GetLeftEyeEmitter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionEmitter(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public GetLeftEyePlace()I
    .locals 1

    .line 140
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionPlace(I)I

    move-result v0

    return v0
.end method

.method public GetParticlePartitionCount()I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public GetParticlePartitionEmitter(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 226
    iget-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    .line 230
    iget-object p1, p1, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method public GetParticlePartitionPlace(I)I
    .locals 1

    .line 206
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 207
    iget-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    .line 211
    iget p1, p1, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    return p1
.end method

.method public GetParticleType()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    return v0
.end method

.method public GetRightEyeEmitter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionEmitter(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public GetRightEyePlace()I
    .locals 1

    .line 166
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionPlace(I)I

    move-result v0

    return v0
.end method
