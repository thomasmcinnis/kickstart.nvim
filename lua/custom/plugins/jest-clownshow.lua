return {
    'nhurlock/clownshow.nvim',
    event = {
        'BufEnter *.test.[tj]s',
        'BufEnter *.spec.[tj]s',
    },
    config = function()
        require('clownshow').setup {
            -- mode= 'above',
            show_text = true,
            passed = {
                icon = '',
                text = 'Passed',
                hl_group = 'LspDiagnosticsInformation',
            },
            failed = {
                icon = '',
                text = 'Failed',
                hl_group = 'LspDiagnosticsError',
            },
            skipped = {
                icon = '⭘',
                text = 'Skipped',
                hl_group = 'LspDiagnosticsWarning',
            },
            loading = {
                icon = '●',
                text = 'Loading...',
                hl_group = 'LspDiagnosticsWarning',
            },
        }
    end,
}
