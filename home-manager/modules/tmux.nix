{ pkgs, ... } :
{
	programs.tmux = {
		enable = true;
		shortcut = "Space";
		baseIndex = 1;
		keyMode = "vi";
		plugins = with pkgs.tmuxPlugins;[
			sensible
			vim-tmux-navigator
			resurrect
			yank
		{
			plugin = dracula;
			extraConfig = ''
				set -g @dracula-show-battery false
				set -g @dracula-show-powerline true
				set -g @dracula-refresh-rate 10

				set -g @dracula-plugins "git time"
				set -g @dracula-show-left-icon session
				set -g @dracula-show-timezone false

				set -g @dracula-show-left-sep ""
				set -g @dracula-show-right-sep ""
				set-option -g default-shell ${pkgs.zsh}/bin/zsh
			'';
		}
		];
		extraConfig = ''
		set-option -sa terminal-overrides ",xterm*:Tc"
		set -g mouse on
		#
		bind -n M-H previous-window
		bind -n M-L next-window
		#
		bind-key -T copy-mode-vi v send-keys -X begin-selection
		bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
		bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel
		bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
#open same dir
		bind '"' split-window -v -c "#{pane_current_path}"
		bind % split-window -h -c "#{pane_current_path}"
	'';

	};
}
