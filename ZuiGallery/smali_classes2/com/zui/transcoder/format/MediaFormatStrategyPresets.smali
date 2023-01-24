.class public Lcom/zui/transcoder/format/MediaFormatStrategyPresets;
.super Ljava/lang/Object;
.source "MediaFormatStrategyPresets.java"


# static fields
.field public static final EXPORT_PRESET_960x540:Lcom/zui/transcoder/format/MediaFormatStrategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/zui/transcoder/format/ExportPreset960x540Strategy;

    invoke-direct {v0}, Lcom/zui/transcoder/format/ExportPreset960x540Strategy;-><init>()V

    sput-object v0, Lcom/zui/transcoder/format/MediaFormatStrategyPresets;->EXPORT_PRESET_960x540:Lcom/zui/transcoder/format/MediaFormatStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAndroid320pStrategy()Lcom/zui/transcoder/format/MediaFormatStrategy;
    .locals 1

    .line 20
    new-instance v0, Lcom/zui/transcoder/format/Android320_240FormatStrategy;

    invoke-direct {v0}, Lcom/zui/transcoder/format/Android320_240FormatStrategy;-><init>()V

    return-object v0
.end method

.method public static createAndroid720pStrategy()Lcom/zui/transcoder/format/MediaFormatStrategy;
    .locals 1

    .line 16
    new-instance v0, Lcom/zui/transcoder/format/Android720pFormatStrategy;

    invoke-direct {v0}, Lcom/zui/transcoder/format/Android720pFormatStrategy;-><init>()V

    return-object v0
.end method

.method public static createAndroid720pStrategy(I)Lcom/zui/transcoder/format/MediaFormatStrategy;
    .locals 1

    .line 31
    new-instance v0, Lcom/zui/transcoder/format/Android720pFormatStrategy;

    invoke-direct {v0, p0}, Lcom/zui/transcoder/format/Android720pFormatStrategy;-><init>(I)V

    return-object v0
.end method

.method public static createExportPreset960x540Strategy()Lcom/zui/transcoder/format/MediaFormatStrategy;
    .locals 1

    .line 40
    new-instance v0, Lcom/zui/transcoder/format/ExportPreset960x540Strategy;

    invoke-direct {v0}, Lcom/zui/transcoder/format/ExportPreset960x540Strategy;-><init>()V

    return-object v0
.end method
