.class public Landroidx/renderscript/SamplerThunker$Builder;
.super Ljava/lang/Object;
.source "SamplerThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/SamplerThunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroidx/renderscript/Sampler$Value;

.field mMin:Landroidx/renderscript/Sampler$Value;

.field mRS:Landroidx/renderscript/RenderScriptThunker;

.field mWrapR:Landroidx/renderscript/Sampler$Value;

.field mWrapS:Landroidx/renderscript/Sampler$Value;

.field mWrapT:Landroidx/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScriptThunker;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mRS:Landroidx/renderscript/RenderScriptThunker;

    .line 80
    sget-object p1, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    iput-object p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mMin:Landroidx/renderscript/Sampler$Value;

    .line 81
    sget-object p1, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    iput-object p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mMag:Landroidx/renderscript/Sampler$Value;

    .line 82
    sget-object p1, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    iput-object p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mWrapS:Landroidx/renderscript/Sampler$Value;

    .line 83
    sget-object p1, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    iput-object p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mWrapT:Landroidx/renderscript/Sampler$Value;

    .line 84
    sget-object p1, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    iput-object p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mWrapR:Landroidx/renderscript/Sampler$Value;

    return-void
.end method


# virtual methods
.method public create()Landroidx/renderscript/Sampler;
    .locals 4

    .line 131
    iget-object v0, p0, Landroidx/renderscript/SamplerThunker$Builder;->mRS:Landroidx/renderscript/RenderScriptThunker;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScriptThunker;->validate()V

    .line 133
    :try_start_0
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    iget-object v1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mRS:Landroidx/renderscript/RenderScriptThunker;

    iget-object v1, v1, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 134
    iget-object v1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mMin:Landroidx/renderscript/Sampler$Value;

    invoke-static {v1}, Landroidx/renderscript/SamplerThunker;->convertValue(Landroidx/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 135
    iget-object v1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mMag:Landroidx/renderscript/Sampler$Value;

    invoke-static {v1}, Landroidx/renderscript/SamplerThunker;->convertValue(Landroidx/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 136
    iget-object v1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mWrapS:Landroidx/renderscript/Sampler$Value;

    invoke-static {v1}, Landroidx/renderscript/SamplerThunker;->convertValue(Landroidx/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 137
    iget-object v1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mWrapT:Landroidx/renderscript/Sampler$Value;

    invoke-static {v1}, Landroidx/renderscript/SamplerThunker;->convertValue(Landroidx/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 138
    iget v1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mAniso:F

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setAnisotropy(F)V

    .line 139
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v0

    .line 141
    new-instance v1, Landroidx/renderscript/SamplerThunker;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/renderscript/SamplerThunker$Builder;->mRS:Landroidx/renderscript/RenderScriptThunker;

    invoke-direct {v1, v2, v3}, Landroidx/renderscript/SamplerThunker;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 142
    iget-object v2, p0, Landroidx/renderscript/SamplerThunker$Builder;->mMin:Landroidx/renderscript/Sampler$Value;

    iput-object v2, v1, Landroidx/renderscript/SamplerThunker;->mMin:Landroidx/renderscript/Sampler$Value;

    .line 143
    iget-object v2, p0, Landroidx/renderscript/SamplerThunker$Builder;->mMag:Landroidx/renderscript/Sampler$Value;

    iput-object v2, v1, Landroidx/renderscript/SamplerThunker;->mMag:Landroidx/renderscript/Sampler$Value;

    .line 144
    iget-object v2, p0, Landroidx/renderscript/SamplerThunker$Builder;->mWrapS:Landroidx/renderscript/Sampler$Value;

    iput-object v2, v1, Landroidx/renderscript/SamplerThunker;->mWrapS:Landroidx/renderscript/Sampler$Value;

    .line 145
    iget-object v2, p0, Landroidx/renderscript/SamplerThunker$Builder;->mWrapT:Landroidx/renderscript/Sampler$Value;

    iput-object v2, v1, Landroidx/renderscript/SamplerThunker;->mWrapT:Landroidx/renderscript/Sampler$Value;

    .line 146
    iget-object v2, p0, Landroidx/renderscript/SamplerThunker$Builder;->mWrapR:Landroidx/renderscript/Sampler$Value;

    iput-object v2, v1, Landroidx/renderscript/SamplerThunker;->mWrapR:Landroidx/renderscript/Sampler$Value;

    .line 147
    iget v2, p0, Landroidx/renderscript/SamplerThunker$Builder;->mAniso:F

    iput v2, v1, Landroidx/renderscript/SamplerThunker;->mAniso:F

    .line 148
    iput-object v0, v1, Landroidx/renderscript/SamplerThunker;->mN:Landroid/renderscript/Sampler;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 152
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setAnisotropy(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 124
    iput p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mAniso:F

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMagnification(Landroidx/renderscript/Sampler$Value;)V
    .locals 1

    .line 99
    sget-object v0, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mMag:Landroidx/renderscript/Sampler$Value;

    return-void
.end method

.method public setMinification(Landroidx/renderscript/Sampler$Value;)V
    .locals 1

    .line 88
    sget-object v0, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    .line 89
    sget-object v0, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    .line 90
    sget-object v0, Landroidx/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    .line 91
    sget-object v0, Landroidx/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroidx/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mMin:Landroidx/renderscript/Sampler$Value;

    return-void
.end method

.method public setWrapS(Landroidx/renderscript/Sampler$Value;)V
    .locals 1

    .line 107
    sget-object v0, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Sampler$Value;->CLAMP:Landroidx/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroidx/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mWrapS:Landroidx/renderscript/Sampler$Value;

    return-void
.end method

.method public setWrapT(Landroidx/renderscript/Sampler$Value;)V
    .locals 1

    .line 115
    sget-object v0, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Sampler$Value;->CLAMP:Landroidx/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroidx/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/renderscript/SamplerThunker$Builder;->mWrapT:Landroidx/renderscript/Sampler$Value;

    return-void
.end method
